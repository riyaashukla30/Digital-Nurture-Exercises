import { Routes } from '@angular/router';
import { EnrollmentFormComponent } from './pages/enrollment-form/enrollment-form';

export const routes: Routes = [
  {
    path: '',
    redirectTo: 'enroll',
    pathMatch: 'full'
  },
  {
    path: 'enroll',
    component: EnrollmentFormComponent
  }
];