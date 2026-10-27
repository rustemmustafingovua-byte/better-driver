.class public final Lm/u;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Li9/a;


# direct methods
.method public constructor <init>(ZLi9/a;)V
    .locals 0

    iput-boolean p1, p0, Lm/u;->l:Z

    iput-object p2, p0, Lm/u;->m:Li9/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lm1/f0;

    iget-boolean v0, p0, Lm/u;->l:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lm/u;->m:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lm1/f0;->f(Z)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
