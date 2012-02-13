.class public Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;
.super Ljava/lang/Object;
.source "MouseCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PointerState"
.end annotation


# instance fields
.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mTraceCount:I

.field private mTraceX:[F

.field private mTraceY:[F

.field final synthetic this$1:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x20

    iput-object p1, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->this$1:Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceX:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceY:[F

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object v0
.end method


# virtual methods
.method public addTrace(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceX:[F

    array-length v2, v3

    .local v2, traceCapacity:I
    iget v3, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceCount:I

    if-ne v3, v2, :cond_0

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [F

    .local v0, newTraceX:[F
    iget-object v3, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceX:[F

    iget v4, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceCount:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceX:[F

    new-array v1, v2, [F

    .local v1, newTraceY:[F
    iget-object v3, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceY:[F

    iget v4, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceCount:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceY:[F

    .end local v0           #newTraceX:[F
    .end local v1           #newTraceY:[F
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceX:[F

    iget v4, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceCount:I

    aput p1, v3, v4

    iget-object v3, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceY:[F

    iget v4, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceCount:I

    aput p2, v3, v4

    iget v3, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceCount:I

    return-void
.end method

.method public clearTrace()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/MouseCursor$MouseCursorView$PointerState;->mTraceCount:I

    return-void
.end method
