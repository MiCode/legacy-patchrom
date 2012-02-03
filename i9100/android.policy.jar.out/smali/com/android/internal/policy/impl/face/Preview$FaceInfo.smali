.class public Lcom/android/internal/policy/impl/face/Preview$FaceInfo;
.super Ljava/lang/Object;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/face/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceInfo"
.end annotation


# instance fields
.field eyel:Landroid/graphics/Point;

.field eyer:Landroid/graphics/Point;

.field mface:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/internal/policy/impl/face/Preview;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/face/Preview;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 748
    iput-object p1, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->this$0:Lcom/android/internal/policy/impl/face/Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->mface:Landroid/graphics/Rect;

    .line 751
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyel:Landroid/graphics/Point;

    .line 752
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyer:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public addCheckedEye(IIII)V
    .locals 1
    .parameter "lx"
    .parameter "ly"
    .parameter "rx"
    .parameter "ry"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyel:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyel:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyer:Landroid/graphics/Point;

    iput p3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyer:Landroid/graphics/Point;

    iput p4, v0, Landroid/graphics/Point;->y:I

    .line 773
    return-void
.end method

.method public addFaceEye(IIIIIIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "lx"
    .parameter "ly"
    .parameter "rx"
    .parameter "ry"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->mface:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->mface:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->mface:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->mface:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 766
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyel:Landroid/graphics/Point;

    iput p5, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyel:Landroid/graphics/Point;

    iput p6, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyer:Landroid/graphics/Point;

    iput p7, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyer:Landroid/graphics/Point;

    iput p8, v0, Landroid/graphics/Point;->y:I

    .line 767
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 756
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->mface:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->mface:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->mface:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->mface:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyel:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyel:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyer:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/face/Preview$FaceInfo;->eyer:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 758
    return-void
.end method
