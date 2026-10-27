.class public final Le1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/k0;
.implements Ly8/f;


# static fields
.field public static final m:Ld7/g;


# instance fields
.field public final l:Lr0/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld7/g;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    sput-object v0, Le1/e;->m:Ld7/g;

    return-void
.end method

.method public constructor <init>(Lr0/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/e;->l:Lr0/q;

    return-void
.end method


# virtual methods
.method public final d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p2, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Le1/e;->l:Lr0/q;

    invoke-virtual {p0}, Lr0/q;->J()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Ly8/g;
    .locals 0

    sget-object p0, Le1/e;->m:Ld7/g;

    return-object p0
.end method

.method public final bridge k(Ly8/g;)Ly8/h;
    .locals 0

    invoke-static {p0, p1}, Lc6/o;->V(Ly8/f;Ly8/g;)Ly8/h;

    move-result-object p0

    return-object p0
.end method

.method public final bridge n(Ly8/g;)Ly8/f;
    .locals 0

    invoke-static {p0, p1}, Lc6/o;->O(Ly8/f;Ly8/g;)Ly8/f;

    move-result-object p0

    return-object p0
.end method

.method public final bridge y(Ly8/h;)Ly8/h;
    .locals 0

    invoke-static {p0, p1}, Lc6/o;->X(Ly8/f;Ly8/h;)Ly8/h;

    move-result-object p0

    return-object p0
.end method
