.class Landroid/speech/tts/TextToSpeech$1;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->initTts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$000(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {p2}, Landroid/speech/tts/ITts$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITts;

    move-result-object v2

    #setter for: Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;
    invoke-static {v1, v2}, Landroid/speech/tts/TextToSpeech;->access$102(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITts;)Landroid/speech/tts/ITts;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x1

    #setter for: Landroid/speech/tts/TextToSpeech;->mStarted:Z
    invoke-static {v1, v2}, Landroid/speech/tts/TextToSpeech;->access$202(Landroid/speech/tts/TextToSpeech;Z)Z

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setEngineByPackageName(Ljava/lang/String;)I

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$300(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$OnInitListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$300(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$OnInitListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    #getter for: Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$000(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    #setter for: Landroid/speech/tts/TextToSpeech;->mITts:Landroid/speech/tts/ITts;
    invoke-static {v1, v2}, Landroid/speech/tts/TextToSpeech;->access$102(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITts;)Landroid/speech/tts/ITts;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    #setter for: Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;
    invoke-static {v1, v2}, Landroid/speech/tts/TextToSpeech;->access$302(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$1;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    #setter for: Landroid/speech/tts/TextToSpeech;->mStarted:Z
    invoke-static {v1, v2}, Landroid/speech/tts/TextToSpeech;->access$202(Landroid/speech/tts/TextToSpeech;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
