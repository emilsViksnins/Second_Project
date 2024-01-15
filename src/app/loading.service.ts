
import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',

})
export class LoadingService {

  private _isLoading = new BehaviorSubject<boolean>(false);

  public isLoading$ = this._isLoading.asObservable();

  public startLoading() {
    this._isLoading.next(true);
  }
}