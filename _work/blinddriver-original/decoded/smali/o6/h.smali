.class public Lo6/h;
.super Lo6/c;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo6/p;Lb6/f;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lo6/c;-><init>(Lo6/p;Lb6/f;I)V

    iput-object p3, p0, Lo6/h;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lb6/f;)Ln6/e;
    .locals 0

    invoke-virtual {p0, p1}, Lo6/h;->h(Lb6/f;)Lo6/h;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo6/h;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lr5/s0;
    .locals 0

    sget-object p0, Lr5/s0;->l:Lr5/s0;

    return-object p0
.end method

.method public bridge synthetic g(Lb6/f;)Lo6/c;
    .locals 0

    invoke-virtual {p0, p1}, Lo6/h;->h(Lb6/f;)Lo6/h;

    move-result-object p0

    return-object p0
.end method

.method public h(Lb6/f;)Lo6/h;
    .locals 2

    iget-object v0, p0, Lo6/r;->b:Lb6/f;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lo6/h;

    iget-object v1, p0, Lo6/r;->a:Lo6/p;

    iget-object p0, p0, Lo6/h;->e:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p0}, Lo6/h;-><init>(Lo6/p;Lb6/f;Ljava/lang/String;)V

    return-object v0
.end method
