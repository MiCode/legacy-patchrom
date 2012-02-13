.class Landroid/speech/tts/TextToSpeech$2;
.super Landroid/speech/tts/ITtsCallback$Stub;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$2;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$2;->val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    invoke-direct {p0}, Landroid/speech/tts/ITtsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public utteranceCompleted(Ljava/lang/String;)V
    .locals 1
    .parameter "utteranceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$2;->val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$2;->val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;->onUtteranceCompleted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
