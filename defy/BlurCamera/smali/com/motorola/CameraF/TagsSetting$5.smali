.class Lcom/motorola/CameraF/TagsSetting$5;
.super Ljava/lang/Object;
.source "TagsSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/CameraF/TagsSetting;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/CameraF/TagsSetting;


# direct methods
.method constructor <init>(Lcom/motorola/CameraF/TagsSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/motorola/CameraF/TagsSetting$5;->this$0:Lcom/motorola/CameraF/TagsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/motorola/CameraF/TagsSetting$5;->this$0:Lcom/motorola/CameraF/TagsSetting;

    invoke-virtual {v0}, Lcom/motorola/CameraF/TagsSetting;->finish()V

    .line 245
    return-void
.end method
