.class public Lcom/android/internal/util/ProcessedMessages;
.super Ljava/lang/Object;
.source "ProcessedMessages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ProcessedMessages$Info;
    }
.end annotation


# static fields
.field public static final DEFAULT_SIZE:I = 0x14


# instance fields
.field private mCount:I

.field private mMaxSize:I

.field private mMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/util/ProcessedMessages$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mOldestIndex:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProcessedMessages;->mMessages:Ljava/util/Vector;

    .line 121
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/util/ProcessedMessages;->mMaxSize:I

    .line 122
    iput v1, p0, Lcom/android/internal/util/ProcessedMessages;->mOldestIndex:I

    .line 123
    iput v1, p0, Lcom/android/internal/util/ProcessedMessages;->mCount:I

    .line 129
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .parameter "maxSize"

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProcessedMessages;->mMessages:Ljava/util/Vector;

    .line 121
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/util/ProcessedMessages;->mMaxSize:I

    .line 122
    iput v1, p0, Lcom/android/internal/util/ProcessedMessages;->mOldestIndex:I

    .line 123
    iput v1, p0, Lcom/android/internal/util/ProcessedMessages;->mCount:I

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/internal/util/ProcessedMessages;->setSize(I)V

    .line 133
    return-void
.end method


# virtual methods
.method add(Landroid/os/Message;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 3
    .parameter "message"
    .parameter "state"
    .parameter "orgState"

    .prologue
    .line 186
    iget v1, p0, Lcom/android/internal/util/ProcessedMessages;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/ProcessedMessages;->mCount:I

    .line 187
    iget-object v1, p0, Lcom/android/internal/util/ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/util/ProcessedMessages;->mMaxSize:I

    if-ge v1, v2, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/internal/util/ProcessedMessages;->mMessages:Ljava/util/Vector;

    new-instance v2, Lcom/android/internal/util/ProcessedMessages$Info;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/internal/util/ProcessedMessages$Info;-><init>(Lcom/android/internal/util/ProcessedMessages;Landroid/os/Message;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/ProcessedMessages;->mMessages:Ljava/util/Vector;

    iget v2, p0, Lcom/android/internal/util/ProcessedMessages;->mOldestIndex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/ProcessedMessages$Info;

    .line 191
    .local v0, info:Lcom/android/internal/util/ProcessedMessages$Info;
    iget v1, p0, Lcom/android/internal/util/ProcessedMessages;->mOldestIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/ProcessedMessages;->mOldestIndex:I

    .line 192
    iget v1, p0, Lcom/android/internal/util/ProcessedMessages;->mOldestIndex:I

    iget v2, p0, Lcom/android/internal/util/ProcessedMessages;->mMaxSize:I

    if-lt v1, v2, :cond_1

    .line 193
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/ProcessedMessages;->mOldestIndex:I

    .line 195
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/ProcessedMessages$Info;->update(Landroid/os/Message;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_0
.end method

.method count()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/internal/util/ProcessedMessages;->mCount:I

    return v0
.end method

.method get(I)Lcom/android/internal/util/ProcessedMessages$Info;
    .locals 2
    .parameter "index"

    .prologue
    .line 166
    iget v1, p0, Lcom/android/internal/util/ProcessedMessages;->mOldestIndex:I

    add-int v0, v1, p1

    .line 167
    .local v0, nextIndex:I
    iget v1, p0, Lcom/android/internal/util/ProcessedMessages;->mMaxSize:I

    if-lt v0, v1, :cond_0

    .line 168
    iget v1, p0, Lcom/android/internal/util/ProcessedMessages;->mMaxSize:I

    sub-int/2addr v0, v1

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/ProcessedMessages;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 171
    const/4 v1, 0x0

    .line 173
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/util/ProcessedMessages$Info;

    move-object v1, p0

    goto :goto_0
.end method

.method setSize(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 141
    iput p1, p0, Lcom/android/internal/util/ProcessedMessages;->mMaxSize:I

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/ProcessedMessages;->mCount:I

    .line 143
    iget-object v0, p0, Lcom/android/internal/util/ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 144
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/util/ProcessedMessages;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
