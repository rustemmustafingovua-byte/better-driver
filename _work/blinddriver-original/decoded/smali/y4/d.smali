.class public final synthetic Ly4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic l:Ly4/e;

.field public final synthetic m:Ljava/util/ArrayList;

.field public final synthetic n:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ly4/e;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/d;->l:Ly4/e;

    iput-object p2, p0, Ly4/d;->m:Ljava/util/ArrayList;

    iput-object p3, p0, Ly4/d;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ly4/d;->l:Ly4/e;

    iget-object v0, v0, Ly4/e;->e:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Lg5/s;

    move-result-object v1

    iget-object v2, p0, Ly4/d;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lg5/s;->L(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object p0, p0, Ly4/d;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object p0

    invoke-virtual {p0, v2}, Lg5/q;->h(Ljava/lang/String;)Lg5/o;

    move-result-object p0

    return-object p0
.end method
