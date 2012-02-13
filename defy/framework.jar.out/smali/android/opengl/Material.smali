.class public Landroid/opengl/Material;
.super Ljava/lang/Object;
.source "Material.java"


# static fields
.field private static black:[F


# instance fields
.field private d:F

.field private illum:I

.field private ka:[F

.field private kd:[F

.field private ks:[F

.field private map_kd:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private ns:F

.field private parent:Landroid/opengl/Object3D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/opengl/Material;->black:[F

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/opengl/Object3D;)V
    .locals 2
    .parameter "parent"

    .prologue
    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/opengl/Material;->ka:[F

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/opengl/Material;->kd:[F

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/opengl/Material;->ks:[F

    iput-object p1, p0, Landroid/opengl/Material;->parent:Landroid/opengl/Object3D;

    return-void
.end method


# virtual methods
.method public getMap_Kd()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/opengl/Material;->map_kd:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/opengl/Material;->name:Ljava/lang/String;

    return-object v0
.end method

.method public load(Ljava/io/DataInputStream;)V
    .locals 6
    .parameter "dis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/opengl/Material;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/opengl/Material;->map_kd:Ljava/lang/String;

    iget-object v0, p0, Landroid/opengl/Material;->parent:Landroid/opengl/Object3D;

    invoke-virtual {v0}, Landroid/opengl/Object3D;->hasTexcoords()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/opengl/Material;->map_kd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/opengl/Material;->parent:Landroid/opengl/Object3D;

    iget-object v1, p0, Landroid/opengl/Material;->map_kd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/opengl/Object3D;->loadTexture(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/opengl/Material;->ka:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Landroid/opengl/Material;->ka:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Landroid/opengl/Material;->ka:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Landroid/opengl/Material;->ka:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Landroid/opengl/Material;->kd:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Landroid/opengl/Material;->kd:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Landroid/opengl/Material;->kd:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Landroid/opengl/Material;->kd:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Landroid/opengl/Material;->ks:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Landroid/opengl/Material;->ks:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Landroid/opengl/Material;->ks:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Landroid/opengl/Material;->ks:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    aput v1, v0, v5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/opengl/Material;->ns:F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Landroid/opengl/Material;->illum:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/opengl/Material;->d:F

    return-void
.end method

.method public setMaterialParameters(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x408

    const/16 v0, 0x1200

    iget-object v1, p0, Landroid/opengl/Material;->kd:[F

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    const/16 v0, 0x1201

    iget-object v1, p0, Landroid/opengl/Material;->kd:[F

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    const/16 v0, 0x1202

    iget-object v1, p0, Landroid/opengl/Material;->ks:[F

    invoke-interface {p1, v3, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    const/16 v0, 0x1601

    iget v1, p0, Landroid/opengl/Material;->ns:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x4300

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {p1, v3, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "},"

    const-string v2, ","

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Material[name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ka={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->ka:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->ka:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->ka:[F

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kd={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->kd:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->kd:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->kd:[F

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ks={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->ks:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->ks:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->ks:[F

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "},"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/opengl/Material;->ns:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "map_kd=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/opengl/Material;->map_kd:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "illum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/opengl/Material;->illum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/opengl/Material;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/opengl/Material;->map_kd:Ljava/lang/String;

    goto :goto_0
.end method
