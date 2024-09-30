class OnboardModel {
  String image, name;

  OnboardModel({required this.image, required this.name});
}

List<OnboardModel> onboarding = [
   OnboardModel(
    image: 'https://scontent-dfw5-2.xx.fbcdn.net/v/t1.6435-9/66785970_10159107233341151_9148108885385543680_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=13d280&_nc_ohc=1z3TueewspIQ7kNvgGnEeuS&_nc_ht=scontent-dfw5-2.xx&_nc_gid=AdvjlzTdK5kNpVDYazwDFxr&oh=00_AYBQvpGgFEhXNa21erHOY-k42QjVyYwqSVgpif-Njmr91w&oe=67204C2C',
    name: 'Explore Track cars with us.',
  ),
  OnboardModel(
    image: 'https://w0.peakpx.com/wallpaper/733/558/HD-wallpaper-cars-sports-cars-race-track-aerial-view.jpg',
    name: "Experience Luxury & Speed.",
  ),
  OnboardModel(
    image: 'https://www.wsupercars.com/wallpapers-phone/Endurance-Racing/2023-Porsche-963-LMDh-007-2800p.jpg',
    name: 'Your choice, our ride.',
  ),
  OnboardModel(
    image: 'https://w0.peakpx.com/wallpaper/294/242/HD-wallpaper-nissan-gt-r-nismo-car-cars-gt-sport-gtr-japanese-cars-jdm-jdm-turbo.jpg',
    name: 'Feel the Adrenaline.',
  ),
];