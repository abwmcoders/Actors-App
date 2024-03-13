class RealsObject {
  final String mediaType;
  final String videoUrl, imageUrl;

  RealsObject({required this.mediaType, required this.videoUrl, required this.imageUrl});
}

List<RealsObject> realsList = [
  RealsObject(
    mediaType: 'video',
    imageUrl: '',
    videoUrl:
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
  ),
  RealsObject(
    mediaType: 'video',
    imageUrl: '',
    videoUrl:
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
  ),
  RealsObject(
    mediaType: 'video',
    imageUrl: '',
    videoUrl:
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
  ),
 
  // RealsObject(
  //   mediaType: 'image',
  //   imageUrl: AssetsConstants.bg,
  //   videoUrl: ""
  // ),
  // RealsObject(
  //   mediaType: 'video',
  //   imageUrl: '',
  //   videoUrl:
  //       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
  // ),
];
