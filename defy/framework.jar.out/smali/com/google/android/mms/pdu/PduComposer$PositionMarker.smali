.class Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionMarker"
.end annotation


# instance fields
.field private c_pos:I

.field private currentStackSize:I

.field final synthetic this$0:Lcom/google/android/mms/pdu/PduComposer;


# direct methods
.method private constructor <init>(Lcom/google/android/mms/pdu/PduComposer;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;-><init>(Lcom/google/android/mms/pdu/PduComposer;)V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->c_pos:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->currentStackSize:I

    return p1
.end method


# virtual methods
.method getLength()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->currentStackSize:I

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    #getter for: Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduComposer;->access$100(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-result-object v1

    iget v1, v1, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Invalid call to getLength()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->c_pos:I

    sub-int/2addr v0, v1

    return v0
.end method
