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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v1, v0

    iput-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL10Ext;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10Ext;

    move-object v1, v0

    iput-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    :cond_0
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    iput-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    :cond_1
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move-object v1, v0

    iput-object v1, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    :cond_2
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-eqz v1, :cond_3

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .end local p1
    iput-object p1, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    :cond_3
    return-void
.end method
