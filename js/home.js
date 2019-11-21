var botonesCorazon = document.querySelectorAll(".botonmegusta");
for (var i = 0; i < botonesCorazon.length; i++)
{
        botonesCorazon[i].addEventListener("click", function() {
            if (this.src.endsWith("megusta.png"))
                this.src = this.src.replace("megusta.png", "megustarojo.png")
            else
                this.src = this.src.replace("megustarojo.png", "megusta.png");
        });
}



