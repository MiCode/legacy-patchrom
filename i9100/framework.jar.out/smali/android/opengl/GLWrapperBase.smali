.class abstract Landroid/opengl/GLWrapperBase;
.super Ljava/lang/Object;
.source "GLWrapperBase.java"

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL;
.implements Ljavax/microedition/khronos/opengles/GL10;
.implements Ljavax/microedition/khronos/opengles/GL10Ext;
.implements Ljavax/microedition/khronos/opengles/GL11;
.implements Ljavax/microedition/khronos/opengles/GL11Ext;


# instance fields
.field protected mgl:Ljavax/microedition/khronos/opengles/GL10;

.field protected mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

.field protected mgl11:Ljavax/microedition/khronos/opengles/GL11;

.field protected mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

.field protected mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v1, v0

    iput-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    .line 34
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL10Ext;

    if-eqz v1, :cond_0

    .line 35
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10Ext;

    move-object v1, v0

    iput-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    .line 37
    :cond_0
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_1

    .line 38
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    iput-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    .line 40
    :cond_1
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    if-eqz v1, :cond_2

    .line 41
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move-object v1, v0

    iput-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    .line 43
    :cond_2
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-eqz v1, :cond_3

    .line 44
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .end local p1
    iput-object p1, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 46
    :cond_3
    return-void
.end method
