.class Landroid/app/ShutdownDialog$1;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ShutdownDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ShutdownDialog;


# direct methods
.method constructor <init>(Landroid/app/ShutdownDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 122
    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$000(Landroid/app/ShutdownDialog;)I

    move-result v2

    iget-object v3, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->buf:[I
    invoke-static {v3}, Landroid/app/ShutdownDialog;->access$100(Landroid/app/ShutdownDialog;)[I

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/LibQmg;->qmgLoadFrame(I[I)I

    move-result v1

    .line 123
    .local v1, ret:I
    if-ltz v1, :cond_2

    .line 124
    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Draw frame: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    iget-object v3, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->buf:[I
    invoke-static {v3}, Landroid/app/ShutdownDialog;->access$100(Landroid/app/ShutdownDialog;)[I

    move-result-object v3

    iget-object v4, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->width:I
    invoke-static {v4}, Landroid/app/ShutdownDialog;->access$300(Landroid/app/ShutdownDialog;)I

    move-result v4

    iget-object v5, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->height:I
    invoke-static {v5}, Landroid/app/ShutdownDialog;->access$400(Landroid/app/ShutdownDialog;)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    #setter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Landroid/app/ShutdownDialog;->access$202(Landroid/app/ShutdownDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 127
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mImages:Landroid/graphics/Bitmap;
    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$200(Landroid/app/ShutdownDialog;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mShutdownView:Landroid/widget/ImageView;
    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    if-nez v1, :cond_1

    .line 151
    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 154
    :cond_0
    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$000(Landroid/app/ShutdownDialog;)I

    move-result v2

    invoke-static {v2}, Landroid/app/LibQmg;->qmgClose(I)I

    .line 165
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-void

    .line 157
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mViewUpdateHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$700(Landroid/app/ShutdownDialog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 160
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 161
    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->mRunOnAnimationEnd:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$600(Landroid/app/ShutdownDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 163
    :cond_3
    iget-object v2, p0, Landroid/app/ShutdownDialog$1;->this$0:Landroid/app/ShutdownDialog;

    #getter for: Landroid/app/ShutdownDialog;->handle:I
    invoke-static {v2}, Landroid/app/ShutdownDialog;->access$000(Landroid/app/ShutdownDialog;)I

    move-result v2

    invoke-static {v2}, Landroid/app/LibQmg;->qmgClose(I)I

    goto :goto_0
.end method
