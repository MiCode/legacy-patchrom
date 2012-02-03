.class public Landroid/drm/mobile2/DrmHttpEvent;
.super Ljava/lang/Object;
.source "DrmHttpEvent.java"


# instance fields
.field private body:[B

.field private bodylen:I

.field private event:I

.field private header:Ljava/lang/String;

.field private headerlen:I

.field private session:I

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->body:[B

    return-object v0
.end method

.method public getBodylen()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->bodylen:I

    return v0
.end method

.method public getEvent()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->event:I

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderlen()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->headerlen:I

    return v0
.end method

.method public getSession()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->session:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->status:I

    return v0
.end method

.method public setBody([B)V
    .locals 0
    .parameter "body"

    .prologue
    .line 42
    iput-object p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->body:[B

    .line 43
    return-void
.end method

.method public setBodylen(I)V
    .locals 0
    .parameter "bodylen"

    .prologue
    .line 54
    iput p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->bodylen:I

    .line 55
    return-void
.end method

.method public setEvent(I)V
    .locals 0
    .parameter "event"

    .prologue
    .line 18
    iput p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->event:I

    .line 19
    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 36
    iput-object p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->header:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setHeaderlen(I)V
    .locals 0
    .parameter "headerlen"

    .prologue
    .line 48
    iput p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->headerlen:I

    .line 49
    return-void
.end method

.method public setSession(I)V
    .locals 0
    .parameter "session"

    .prologue
    .line 30
    iput p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->session:I

    .line 31
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 24
    iput p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->status:I

    .line 25
    return-void
.end method
