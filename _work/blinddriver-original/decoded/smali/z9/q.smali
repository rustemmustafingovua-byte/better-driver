.class public Lz9/q;
.super Lu9/a;
.source "SourceFile"

# interfaces
.implements La9/d;


# instance fields
.field public final o:Ly8/c;


# direct methods
.method public constructor <init>(Ly8/c;Ly8/h;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lu9/a;-><init>(Ly8/h;Z)V

    iput-object p1, p0, Lz9/q;->o:Ly8/c;

    return-void
.end method


# virtual methods
.method public final N()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public f0()V
    .locals 0

    return-void
.end method

.method public final getCallerFrame()La9/d;
    .locals 1

    iget-object p0, p0, Lz9/q;->o:Ly8/c;

    instance-of v0, p0, La9/d;

    if-eqz v0, :cond_0

    check-cast p0, La9/d;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public p(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lz9/q;->o:Ly8/c;

    invoke-static {p0}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p0

    invoke-static {p1}, Lu9/v;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Lz9/b;->h(Ljava/lang/Object;Ly8/c;)V

    return-void
.end method

.method public r(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lz9/q;->o:Ly8/c;

    invoke-static {p1}, Lu9/v;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
