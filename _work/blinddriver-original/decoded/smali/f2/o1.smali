.class public final Lf2/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/f;


# instance fields
.field public final synthetic l:Lc1/g;

.field public final m:Lf2/p1;


# direct methods
.method public constructor <init>(Lc1/g;Lf2/p1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/o1;->l:Lc1/g;

    iput-object p2, p0, Lf2/o1;->m:Lf2/p1;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lf2/o1;->l:Lc1/g;

    invoke-virtual {p0, p1}, Lc1/g;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final c()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lf2/o1;->l:Lc1/g;

    invoke-virtual {p0}, Lc1/g;->c()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf2/o1;->l:Lc1/g;

    invoke-virtual {p0, p1}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;Li9/a;)Lc1/e;
    .locals 0

    iget-object p0, p0, Lf2/o1;->l:Lc1/g;

    invoke-virtual {p0, p1, p2}, Lc1/g;->e(Ljava/lang/String;Li9/a;)Lc1/e;

    move-result-object p0

    return-object p0
.end method
