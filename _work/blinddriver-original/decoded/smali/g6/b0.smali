.class public final Lg6/b0;
.super Lf6/a0;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg5/m;Le6/z;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lf6/a0;-><init>(Le6/z;Ljava/lang/Class;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lg6/b0;->c:Ljava/util/LinkedHashMap;

    iput-object p4, p0, Lg6/b0;->d:Ljava/lang/Object;

    return-void
.end method
