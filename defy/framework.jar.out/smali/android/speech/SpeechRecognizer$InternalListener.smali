.class Landroid/speech/SpeechRecognizer$InternalListener;
.super Landroid/speech/IRecognitionListener$Stub;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalListener"
.end annotation


# static fields
.field private static final MSG_BEGINNING_OF_SPEECH:I = 0x1

.field private static final MSG_BUFFER_RECEIVED:I = 0x2

.field private static final MSG_END_OF_SPEECH:I = 0x3

.field private static final MSG_ERROR:I = 0x4

.field private static final MSG_ON_EVENT:I = 0x9

.field private static final MSG_PARTIAL_RESULTS:I = 0x7

.field private static final MSG_READY_FOR_SPEECH:I = 0x5

.field private static final MSG_RESULTS:I = 0x6

.field private static final MSG_RMS_CHANGED:I = 0x8


# instance fields
.field private final mInternalHandler:Landroid/os/Handler;

.field private mInternalListener:Landroid/speech/RecognitionListener;

.field final synthetic this$0:Landroid/speech/SpeechRecognizer;


# direct methods
.method private constructor <init>(Landroid/speech/SpeechRecognizer;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-direct {p0}, Landroid/speech/IRecognitionListener$Stub;-><init>()V

    new-instance v0, Landroid/speech/SpeechRecognizer$InternalListener$1;

    invoke-direct {v0, p0}, Landroid/speech/SpeechRecognizer$InternalListener$1;-><init>(Landroid/speech/SpeechRecognizer$InternalListener;)V

    iput-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer$InternalListener;-><init>(Landroid/speech/SpeechRecognizer;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/speech/SpeechRecognizer$InternalListener;Landroid/speech/RecognitionListener;)Landroid/speech/RecognitionListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;

    return-object p1
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 2
    .parameter "buffer"

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(I)V
    .locals 3
    .parameter "error"

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "eventType"
    .parameter "params"

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1, p1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 2
    .parameter "results"

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2
    .parameter "noiseParams"

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 2
    .parameter "results"

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 3
    .parameter "rmsdB"

    .prologue
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
