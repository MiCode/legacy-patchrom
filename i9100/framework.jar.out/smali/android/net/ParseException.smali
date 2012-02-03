.class public Landroid/net/ParseException;
.super Ljava/lang/RuntimeException;
.source "ParseException.java"


# instance fields
.field public response:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/net/ParseException;->response:Ljava/lang/String;

    .line 29
    return-void
.end method
