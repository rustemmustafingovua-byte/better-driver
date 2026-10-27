.class public final Lb0/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls/i;

.field public final b:Lr0/b1;


# direct methods
.method public constructor <init>(Ls/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/t1;->a:Ls/i;

    new-instance p1, Lr0/b1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lr0/b1;-><init>(I)V

    iput-object p1, p0, Lb0/t1;->b:Lr0/b1;

    return-void
.end method
