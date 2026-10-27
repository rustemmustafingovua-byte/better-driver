.class public final Ld/a;
.super Lh4/d;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lc/f;


# direct methods
.method public constructor <init>(Lc/f;Lc/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/a;->d:Lc/f;

    iput-object p2, p0, Lh4/d;->a:Lg5/f;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh4/d;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Ld/a;->d:Lc/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Ld/a;->d:Lc/f;

    iget-object p0, p0, Lc/f;->c:Li9/a;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final c(Lh4/b;)V
    .locals 0

    return-void
.end method

.method public final d(Lh4/b;)V
    .locals 1

    const-string v0, "navigationEvent"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ld/a;->d:Lc/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
