.class public abstract Lp6/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb6/f0;

.field public static final b:Lb6/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ll6/a;

    new-instance v1, Ls5/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ls5/d;-><init>(Lb6/c0;)V

    invoke-direct {v0, v1, v2, v2}, Lb6/c0;-><init>(Ls5/d;Lz6/d;Ly6/c;)V

    iget-object v1, v0, Lb6/c0;->q:Lb6/p0;

    new-instance v2, Lb6/f0;

    invoke-direct {v2, v0, v1}, Lb6/f0;-><init>(Lb6/c0;Lb6/p0;)V

    sput-object v2, Lp6/l;->a:Lb6/f0;

    iget-object v1, v0, Lb6/c0;->q:Lb6/p0;

    new-instance v2, Lb6/f0;

    invoke-direct {v2, v0, v1}, Lb6/f0;-><init>(Lb6/c0;Lb6/p0;)V

    iget-object v3, v1, Lb6/p0;->v:Ls5/p;

    if-nez v3, :cond_0

    sget-object v3, Lb6/f0;->q:La6/n;

    :cond_0
    sget-object v4, Lb6/e0;->m:Lb6/e0;

    if-nez v3, :cond_1

    move-object v5, v4

    goto :goto_0

    :cond_1
    new-instance v5, Lb6/e0;

    invoke-direct {v5, v3}, Lb6/e0;-><init>(Ls5/p;)V

    :goto_0
    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Lb6/f0;

    invoke-direct {v3, v2, v1, v5}, Lb6/f0;-><init>(Lb6/f0;Lb6/p0;Lb6/e0;)V

    move-object v2, v3

    :goto_1
    sput-object v2, Lp6/l;->b:Lb6/f0;

    const-class v1, Lb6/q;

    iget-object v2, v0, Lb6/c0;->m:Lt6/p;

    invoke-virtual {v2, v1}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object v1

    iget-object v2, v0, Lb6/c0;->t:Lb6/h;

    new-instance v3, Lb6/d0;

    invoke-direct {v3, v0, v2, v1}, Lb6/d0;-><init>(Ll6/a;Lb6/h;Lb6/l;)V

    return-void
.end method
