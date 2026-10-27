.class public final Lf2/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb0/l1;

.field public final b:Lb0/l1;

.field public c:Z

.field public d:Lr0/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb0/l1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lb0/l1;-><init>(I)V

    iput-object v0, p0, Lf2/z1;->a:Lb0/l1;

    iput-object v0, p0, Lf2/z1;->b:Lb0/l1;

    return-void
.end method
