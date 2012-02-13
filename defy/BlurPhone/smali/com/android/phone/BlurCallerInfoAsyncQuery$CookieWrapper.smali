.class final Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;
.super Ljava/lang/Object;
.source "BlurCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BlurCallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CookieWrapper"
.end annotation


# instance fields
.field public cookie:Ljava/lang/Object;

.field public event:I

.field private isForUriQuery:Z

.field public listener:Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;

.field public number:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->isForUriQuery:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BlurCallerInfoAsyncQuery$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->isForUriQuery:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/BlurCallerInfoAsyncQuery$CookieWrapper;->isForUriQuery:Z

    return p1
.end method
