.class Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;
.super Ljava/lang/Object;
.source "ContactPhotoCacheListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactPhotoCacheListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoCacheData"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field cursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/phone/ContactPhotoCacheListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;->views:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/ContactPhotoCacheListAdapter;Lcom/android/phone/ContactPhotoCacheListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/phone/ContactPhotoCacheListAdapter$PhotoCacheData;-><init>(Lcom/android/phone/ContactPhotoCacheListAdapter;)V

    return-void
.end method
