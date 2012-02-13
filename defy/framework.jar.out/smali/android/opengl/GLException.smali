.class public Landroid/opengl/GLException;
.super Ljava/lang/RuntimeException;
.source "GLException.java"


# instance fields
.field private final mError:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "error"

    .prologue
    invoke-static {p1}, Landroid/opengl/GLException;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/opengl/GLException;->mError:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "string"

    .prologue
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/opengl/GLException;->mError:I

    return-void
.end method

.method private static getErrorString(I)Ljava/lang/String;
    .locals 3
    .parameter "error"

    .prologue
    invoke-static {p0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, errorString:Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method getError()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/opengl/GLException;->mError:I

    return v0
.end method
