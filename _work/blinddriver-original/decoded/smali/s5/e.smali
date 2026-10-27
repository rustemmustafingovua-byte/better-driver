.class public final Ls5/e;
.super Ls5/l;
.source "SourceFile"


# instance fields
.field public final transient m:Ls5/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls5/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ls5/l;-><init>(Ljava/lang/String;Ls5/h;Ljava/lang/Throwable;)V

    iput-object p2, p0, Ls5/e;->m:Ls5/g;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ls5/e;->m:Ls5/g;

    return-object p0
.end method
