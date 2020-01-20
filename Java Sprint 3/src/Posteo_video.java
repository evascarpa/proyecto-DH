
public class Posteo_video extends Posteo {
	
	private String video;

	protected Posteo_video(Usuario unUsuario, String unVideo) {
		super(unUsuario);
		this.video = unVideo;
		
	}

	public String getVideo() {
		return video;
	}

	
}
