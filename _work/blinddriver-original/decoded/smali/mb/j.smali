.class public final Lmb/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmb/j;

.field public final b:S

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lmb/j;S)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmb/j;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lmb/j;->a:Lmb/j;

    iput-short p2, p0, Lmb/j;->b:S

    return-void
.end method
