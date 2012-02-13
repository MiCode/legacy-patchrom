.class public Lcom/android/phone/CallNotifier$MediaTonePlayer;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaTonePlayer"
.end annotation


# static fields
.field private static final callLostPath:Ljava/lang/String; = "system/media/audio/alert/alert_2.wav"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStreamType:I

.field private mUri:Landroid/net/Uri;

.field private mp:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallNotifier;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "toneToPlay"

    .prologue
    .line 3620
    iput-object p1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3621
    iput-object p2, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mContext:Landroid/content/Context;

    .line 3622
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    .line 3623
    invoke-direct {p0, p3}, Lcom/android/phone/CallNotifier$MediaTonePlayer;->prepareSound(I)V

    .line 3624
    return-void
.end method

.method private prepareSound(I)V
    .locals 4
    .parameter "toneToPlay"

    .prologue
    .line 3632
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "prepareSound: ..."

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3633
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mStreamType:I

    .line 3634
    const/16 v1, 0xe

    if-ne p1, v1, :cond_2

    .line 3635
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "prepareSound: get alert_2 tone"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3636
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "system/media/audio/alert/alert_2.wav"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mUri:Landroid/net/Uri;

    .line 3638
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 3640
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3641
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "prepareSound: setDataSource successful"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3647
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3648
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 3649
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3651
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3657
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "prepareSound: Done"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3658
    :cond_5
    return-void

    .line 3643
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3644
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSound: Exception thrown setDataSource : See if your file is correctly available "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    goto :goto_0

    .line 3653
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 3654
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSound: Exception thrown during prepare"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "currentPlayer"

    .prologue
    .line 3677
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    if-ne p1, v0, :cond_1

    .line 3678
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v1, "onCompletion: Cleaning up the resource"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3679
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3680
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 3681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    .line 3684
    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "currentPlayer"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 3693
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError: message code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Error text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3694
    :cond_0
    const/4 v0, 0x0

    .line 3695
    .local v0, retval:Z
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    if-ne p1, v1, :cond_2

    .line 3696
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v2, "onError: Cleaning up the resource"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3697
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 3698
    iget-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 3699
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    .line 3700
    const/4 v0, 0x1

    .line 3702
    :cond_2
    return v0
.end method

.method public playSound()V
    .locals 2

    .prologue
    .line 3665
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    const-string v1, "playSound: Starting to play"

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 3666
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 3667
    iget-object v0, p0, Lcom/android/phone/CallNotifier$MediaTonePlayer;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 3669
    :cond_1
    return-void
.end method
