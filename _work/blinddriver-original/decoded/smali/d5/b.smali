.class public final Ld5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ld5/c;

.field public final synthetic b:Lw9/r;


# direct methods
.method public constructor <init>(Ld5/c;Lw9/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld5/b;->a:Ld5/c;

    iput-object p2, p0, Ld5/b;->b:Lw9/r;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ld5/b;->a:Ld5/c;

    invoke-virtual {v0, p1}, Ld5/c;->e(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lc5/b;

    invoke-virtual {v0}, Ld5/c;->d()I

    move-result v0

    invoke-direct {p1, v0}, Lc5/b;-><init>(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lc5/a;->a:Lc5/a;

    :goto_0
    iget-object p0, p0, Ld5/b;->b:Lw9/r;

    check-cast p0, Lw9/q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lw9/q;->l(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
