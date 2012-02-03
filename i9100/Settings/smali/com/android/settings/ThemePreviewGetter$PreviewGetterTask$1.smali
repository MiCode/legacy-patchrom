.class Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask$1;
.super Landroid/os/Handler;
.source "ThemePreviewGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;


# direct methods
.method constructor <init>(Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask$1;->this$1:Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask$1;->this$1:Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;

    iget-object v0, v0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->this$0:Lcom/android/settings/ThemePreviewGetter;

    #getter for: Lcom/android/settings/ThemePreviewGetter;->callback:Lcom/android/settings/ThemePicker3D$Notified;
    invoke-static {v0}, Lcom/android/settings/ThemePreviewGetter;->access$200(Lcom/android/settings/ThemePreviewGetter;)Lcom/android/settings/ThemePicker3D$Notified;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask$1;->this$1:Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;

    #getter for: Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->position:I
    invoke-static {v1}, Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;->access$100(Lcom/android/settings/ThemePreviewGetter$PreviewGetterTask;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ThemePicker3D$Notified;->updatepreviewimage(I)V

    .line 129
    return-void
.end method
