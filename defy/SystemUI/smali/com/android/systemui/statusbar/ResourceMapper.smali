.class public final Lcom/android/systemui/statusbar/ResourceMapper;
.super Ljava/lang/Object;
.source "ResourceMapper.java"


# static fields
.field private static sMapping:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/ResourceMapper;->sMapping:Landroid/util/SparseIntArray;

    .line 15
    sget-object v0, Lcom/android/systemui/statusbar/ResourceMapper;->sMapping:Landroid/util/SparseIntArray;

    const v1, 0x10802de

    const v2, 0x602035d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    sget-object v0, Lcom/android/systemui/statusbar/ResourceMapper;->sMapping:Landroid/util/SparseIntArray;

    const v1, 0x10802f4

    const v2, 0x6020373

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    sget-object v0, Lcom/android/systemui/statusbar/ResourceMapper;->sMapping:Landroid/util/SparseIntArray;

    const v1, 0x10802fc

    const v2, 0x602037a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget-object v0, Lcom/android/systemui/statusbar/ResourceMapper;->sMapping:Landroid/util/SparseIntArray;

    const v1, 0x1090066

    const v2, 0x6030021

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(I)I
    .locals 2
    .parameter "resid"

    .prologue
    .line 22
    sget-object v1, Lcom/android/systemui/statusbar/ResourceMapper;->sMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 23
    .local v0, result:I
    if-eqz v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    move v1, p0

    goto :goto_0
.end method
