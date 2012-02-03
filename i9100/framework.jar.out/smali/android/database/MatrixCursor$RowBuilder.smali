.class public Landroid/database/MatrixCursor$RowBuilder;
.super Ljava/lang/Object;
.source "MatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/MatrixCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RowBuilder"
.end annotation


# instance fields
.field private final endIndex:I

.field private index:I

.field final synthetic this$0:Landroid/database/MatrixCursor;


# direct methods
.method constructor <init>(Landroid/database/MatrixCursor;II)V
    .locals 0
    .parameter
    .parameter "index"
    .parameter "endIndex"

    .prologue
    .line 192
    iput-object p1, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput p2, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    .line 194
    iput p3, p0, Landroid/database/MatrixCursor$RowBuilder;->endIndex:I

    .line 195
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    .locals 3
    .parameter "columnValue"

    .prologue
    .line 205
    iget v0, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    iget v1, p0, Landroid/database/MatrixCursor$RowBuilder;->endIndex:I

    if-ne v0, v1, :cond_0

    .line 206
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    const-string v1, "No more columns left."

    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    iget-object v0, p0, Landroid/database/MatrixCursor$RowBuilder;->this$0:Landroid/database/MatrixCursor;

    #getter for: Landroid/database/MatrixCursor;->data:[Ljava/lang/Object;
    invoke-static {v0}, Landroid/database/MatrixCursor;->access$000(Landroid/database/MatrixCursor;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/database/MatrixCursor$RowBuilder;->index:I

    aput-object p1, v0, v1

    .line 211
    return-object p0
.end method
