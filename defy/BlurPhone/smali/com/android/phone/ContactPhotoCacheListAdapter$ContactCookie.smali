.class Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;
.super Ljava/lang/Object;
.source "ContactPhotoCacheListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ContactPhotoCacheListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactCookie"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

.field view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/phone/ContactPhotoCacheListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;->this$0:Lcom/android/phone/ContactPhotoCacheListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/ContactPhotoCacheListAdapter;Lcom/android/phone/ContactPhotoCacheListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/phone/ContactPhotoCacheListAdapter$ContactCookie;-><init>(Lcom/android/phone/ContactPhotoCacheListAdapter;)V

    return-void
.end method
