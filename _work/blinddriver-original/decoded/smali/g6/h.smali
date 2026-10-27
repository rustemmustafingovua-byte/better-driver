.class public final Lg6/h;
.super Lf6/a0;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg5/m;Le6/z;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lf6/a0;-><init>(Le6/z;Ljava/lang/Class;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lg6/h;->c:Ljava/util/ArrayList;

    return-void
.end method
