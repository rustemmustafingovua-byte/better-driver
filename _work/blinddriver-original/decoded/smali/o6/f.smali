.class public final Lo6/f;
.super Lo6/r;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo6/p;Lb6/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo6/r;-><init>(Lo6/p;Lb6/f;)V

    iput-object p3, p0, Lo6/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lb6/f;)Ln6/e;
    .locals 2

    iget-object v0, p0, Lo6/r;->b:Lb6/f;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lo6/f;

    iget-object v1, p0, Lo6/r;->a:Lo6/p;

    iget-object p0, p0, Lo6/f;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p0}, Lo6/f;-><init>(Lo6/p;Lb6/f;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo6/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lr5/s0;
    .locals 0

    sget-object p0, Lr5/s0;->o:Lr5/s0;

    return-object p0
.end method
