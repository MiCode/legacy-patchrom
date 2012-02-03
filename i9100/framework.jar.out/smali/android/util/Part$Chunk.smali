.class public Landroid/util/Part$Chunk;
.super Ljava/lang/Object;
.source "Part.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Part;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Chunk"
.end annotation


# instance fields
.field public isFull:Z

.field public mArray:[B

.field public mLength:I

.field final synthetic this$0:Landroid/util/Part;


# direct methods
.method public constructor <init>(Landroid/util/Part;I)V
    .locals 2
    .parameter
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 75
    iput-object p1, p0, Landroid/util/Part$Chunk;->this$0:Landroid/util/Part;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-array v0, p2, [B

    iput-object v0, p0, Landroid/util/Part$Chunk;->mArray:[B

    .line 77
    iput v1, p0, Landroid/util/Part$Chunk;->mLength:I

    .line 78
    iput-boolean v1, p0, Landroid/util/Part$Chunk;->isFull:Z

    .line 79
    return-void
.end method
