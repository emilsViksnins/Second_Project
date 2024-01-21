import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterOutlet } from '@angular/router';
import { BehaviorSubject, Observable, catchError, map, of, startWith } from 'rxjs';
import { ApiResponse } from './interface/api-response';
import { HttpClientModule, HttpErrorResponse } from '@angular/common/http';
import { Page } from './interface/page';
import { UserService } from './service/user.service';
import { FormsModule } from '@angular/forms';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrl: './app.component.css',
  standalone: true,
  imports: [CommonModule, RouterOutlet, HttpClientModule, FormsModule ],
  
  
})
export class AppComponent implements OnInit {
  title(title: any) {
    throw new Error('Method not implemented.');
  }

  usersState$: Observable<{ appState: string, appData?: ApiResponse<Page>, error?: HttpErrorResponse }>;
  responseSubject = new BehaviorSubject<ApiResponse<Page>>(null);
  private currentPageSubject = new BehaviorSubject<number>(0);
  currentPage$ = this.currentPageSubject.asObservable();

  userSevice: any;
  loadingService: any;

 

  constructor() {}

  ngOnInit(): void {
    this.loadingService.loadingOn();
    this.usersState$ = this.userSevice.users$().pipe(
      map((response: ApiResponse<Page>) => {
        this.loadingService.loadingOff();
        this.responseSubject.next(response);
        this.currentPageSubject.next(response.data.page.number);
        console.log(response);
        console.log(this.loadingService.isLoading);
        return ({ appState: 'APP_LOADED', appData: response });
      }),
      startWith({ appState: 'APP_LOADING' }),
      catchError((error: HttpErrorResponse) =>{ 
        this.loadingService.loadingOff();
        return of({ appState: 'APP_ERROR', error })}
        )
    )
  }

  gotToPage(name?: string, pageNumber: number = 0): void {
    this.loadingService.loadingOn();
    this.usersState$ = this.userSevice.users$(name, pageNumber).pipe(
      map((response: ApiResponse<Page>) => {
        this.loadingService.loadingOff();
        this.responseSubject.next(response);
        this.currentPageSubject.next(pageNumber);
        console.log(response);
        return ({ appState: 'APP_LOADED', appData: response });
      }),
      startWith({ appState: 'APP_LOADED', appData: this.responseSubject.value }),
      catchError((error: HttpErrorResponse) =>{ 
        this.loadingService.loadingOff();
        return of({ appState: 'APP_ERROR', error })}
        )
    )
  }

  goToNextOrPreviousPage(direction?: string, name?: string): void {
    this.gotToPage(name, direction === 'forward' ? this.currentPageSubject.value + 1 : this.currentPageSubject.value - 1);
  }
}