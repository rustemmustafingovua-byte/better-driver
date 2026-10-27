.class public final Lf6/k;
.super Lf6/l;
.source "SourceFile"


# instance fields
.field public final m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Le6/b0;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lf6/k;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final w(Lb6/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf6/k;->m:Ljava/lang/Object;

    return-object p0
.end method
