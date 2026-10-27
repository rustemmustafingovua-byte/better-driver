.class public final Ls0/a;
.super Ll7/a;
.source "SourceFile"


# instance fields
.field public final c:Ls0/m0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/m0;

    invoke-direct {v0}, Ls0/m0;-><init>()V

    iput-object v0, p0, Ls0/a;->c:Ls0/m0;

    return-void
.end method


# virtual methods
.method public final C(Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    iget-object p0, p0, Ls0/a;->c:Ls0/m0;

    invoke-virtual {p0, p1, p2, p3, p4}, Ls0/m0;->D(Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V

    return-void
.end method
