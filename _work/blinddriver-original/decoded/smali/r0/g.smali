.class public final Lr0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly8/f;


# static fields
.field public static final l:Lr0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr0/e;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lr0/e;-><init>(I)V

    sput-object v0, Lr0/g;->l:Lr0/e;

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

    sget-object p0, Lr0/g;->l:Lr0/e;

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
