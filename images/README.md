# Images for Nicola Kunz Portfolio

Add the following image files to this folder. The site uses placeholder divs until real images are added; then replace the placeholder divs in the HTML with `<img>` tags pointing to these paths.

## Required images

- **favicon.ico** – Browser tab icon (optional; add to this folder and link from each page)
- **headshot.jpg** – Professional photo for About page (circular crop applied in CSS)
- **hero-bg.jpg** – Optional homepage hero background

### Patient Monitoring System (project-patient-monitoring.html)
- project-monitoring-1.jpg – Complete hardware system setup
- project-monitoring-2.jpg – Team working/collaboration
- project-monitoring-3.jpg – Presenting the system
- project-monitoring-4.jpg – Individual nRF7002 board
- project-monitoring-5.jpg – ECG sensors and hardware details
- project-monitoring-6.jpg – Dashboard/visualization

### Robotic Gripper (project-robotic-gripper.html)
- project-gripper-1.jpg – Physical gripper + drawing/sketch
- project-gripper-2.jpg – CAD model of the gripper
- project-gripper-3.jpg – Right finger in parallel mode
- project-gripper-4.jpg – Right finger in scooping mode
- project-gripper-5.jpg – Left finger in scooping mode
- project-gripper-6.jpg – First prototype (blue PLA)
- project-gripper-7.jpg – Final prototype (white PLA)
- project-gripper-8.jpg – Final gripper in actuated mode
- project-gripper-9.jpg – Final gripper in parallel mode
- project-gripper-10.jpg – Sketches of the right finger
- project-gripper-11.jpg – Simplification of right finger for calculation purposes
- project-gripper-12.jpg – Left finger in parallel mode

### Kit Car (project-kit-car.html)
- project-car-1.jpg – Red fiberglass body (Nov 2018)
- project-car-2.jpg – Chassis with brake assembly (Jan 2019)
- project-car-3.jpg – Engine installation (Feb 2019)
- project-car-4.jpg – Front suspension assembly (Feb 2019)
- project-car-5.jpg – Rear view with floor panels (Feb 2019)
- project-car-6.jpg – Finished black car (Mar 2020)
- project-car-7.jpg, project-car-8.jpg – Optional detail shots

### 3R Pendulum Dynamics Simulation (project-3r-pendulum.html)
- pendulum-sim-1.gif – Simulation animation (planar 3R arm falling)
- pendulum-sim-2.jpg – Screenshot of MATLAB simulation at t = 2.38 s
- pendulum-sim-3.jpg – Hand calculations (Lagrangian derivation)
- pendulum-sim-4.jpg – Energy conservation plots
- pendulum-sim-5.jpg – Joint angle trajectory visualization
- pendulum-sim-6.jpg – MATLAB code overview
- pendulum-sim-7.jpg – Additional state-space or phase plots

## Replacing placeholders in HTML

Example: replace a placeholder div like
```html
<div class="project-card-image">Image Placeholder</div>
```
with
```html
<div class="project-card-image">
  <img src="images/project-monitoring-1.jpg" alt="Complete hardware system setup">
</div>
```
Use descriptive `alt` text for accessibility.
