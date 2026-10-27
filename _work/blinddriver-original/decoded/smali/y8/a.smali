.class public abstract Ly8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly8/f;


# instance fields
.field public final l:Ly8/g;


# direct methods
.method public constructor <init>(Ly8/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/a;->l:Ly8/g;

    return-void
.end method


# virtual methods
.method public final d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p2, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Ly8/g;
    .locals 0

    iget-object p0, p0, Ly8/a;->l:Ly8/g;

    return-object p0
.end method

.method public bridge k(Ly8/g;)Ly8/h;
    .locals 0

    invoke-static {p0, p1}, Lc6/o;->V(Ly8/f;Ly8/g;)Ly8/h;

    move-result-object p0

    return-object p0
.end method

.method public bridge n(Ly8/g;)Ly8/f;
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
