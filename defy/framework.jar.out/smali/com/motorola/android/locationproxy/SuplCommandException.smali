.class public Lcom/motorola/android/locationproxy/SuplCommandException;
.super Ljava/lang/RuntimeException;
.source "SuplCommandException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/locationproxy/SuplCommandException$Error;
    }
.end annotation


# instance fields
.field private e:Lcom/motorola/android/locationproxy/SuplCommandException$Error;


# direct methods
.method public constructor <init>(Lcom/motorola/android/locationproxy/SuplCommandException$Error;)V
    .locals 1
    .parameter "e"

    .prologue
    invoke-virtual {p1}, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/android/locationproxy/SuplCommandException;->e:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    return-void
.end method

.method public static fromSuplErrno(I)Lcom/motorola/android/locationproxy/SuplCommandException;
    .locals 3
    .parameter "supl_errno"

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "SUPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized Supl errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/android/locationproxy/SuplCommandException;

    sget-object v1, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->INVALID_RESPONSE:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    invoke-direct {v0, v1}, Lcom/motorola/android/locationproxy/SuplCommandException;-><init>(Lcom/motorola/android/locationproxy/SuplCommandException$Error;)V

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/motorola/android/locationproxy/SuplCommandException;

    sget-object v1, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->DB_ERROR:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    invoke-direct {v0, v1}, Lcom/motorola/android/locationproxy/SuplCommandException;-><init>(Lcom/motorola/android/locationproxy/SuplCommandException$Error;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/motorola/android/locationproxy/SuplCommandException;

    sget-object v1, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->SOCKET_ERROR:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    invoke-direct {v0, v1}, Lcom/motorola/android/locationproxy/SuplCommandException;-><init>(Lcom/motorola/android/locationproxy/SuplCommandException$Error;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getCommandError()Lcom/motorola/android/locationproxy/SuplCommandException$Error;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/locationproxy/SuplCommandException;->e:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    return-object v0
.end method
