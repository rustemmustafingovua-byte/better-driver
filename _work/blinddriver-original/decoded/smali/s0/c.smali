.class public final Ls0/c;
.super Ll7/a;
.source "SourceFile"


# instance fields
.field public final c:Ls0/m0;

.field public final d:Ls0/m0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/m0;

    invoke-direct {v0}, Ls0/m0;-><init>()V

    iput-object v0, p0, Ls0/c;->c:Ls0/m0;

    new-instance v0, Ls0/m0;

    invoke-direct {v0}, Ls0/m0;-><init>()V

    iput-object v0, p0, Ls0/c;->d:Ls0/m0;

    return-void
.end method
