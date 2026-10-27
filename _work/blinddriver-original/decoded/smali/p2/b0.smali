.class public final Lp2/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/j;


# instance fields
.field public final synthetic l:Li9/e;

.field public final synthetic m:Li9/c;


# direct methods
.method public constructor <init>(Li9/e;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/b0;->l:Li9/e;

    iput-object p2, p0, Lp2/b0;->m:Li9/c;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp2/b0;->m:Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lc1/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp2/b0;->l:Li9/e;

    invoke-interface {p0, p1, p2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
