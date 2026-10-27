.class public final Lmb/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/c3;
.implements Lq4/d;
.implements Lx3/m;
.implements Ly7/o;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lmb/s2;->l:I

    const-string v0, "query"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lmb/s2;->m:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmb/s2;->l:I

    iput-object p1, p0, Lmb/s2;->m:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/CharSequence;IILx3/r;)Z
    .locals 0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lmb/s2;->m:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p4, Lx3/r;->c:I

    and-int/lit8 p0, p0, 0x3

    or-int/lit8 p0, p0, 0x4

    iput p0, p4, Lx3/r;->c:I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public c()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public d(Lmb/b7;)V
    .locals 0

    iget-object p1, p1, Lmb/b7;->m:Lmb/c7;

    iget-object p1, p1, Lmb/c7;->s:Ljava/io/PrintWriter;

    iget-object p0, p0, Lmb/s2;->m:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/s2;->m:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmb/s2;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lw7/n;

    iget-object p0, p0, Lmb/s2;->m:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lw7/n;

    iget-object p0, p0, Lmb/s2;->m:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lw7/n;

    iget-object p0, p0, Lmb/s2;->m:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lq4/c;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lmb/s2;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmb/s2;->m:Ljava/lang/String;

    const/16 v1, 0x3e

    invoke-static {v0, p0, v1}, Lr0/i;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
