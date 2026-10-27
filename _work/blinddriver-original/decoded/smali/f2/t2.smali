.class public abstract Lf2/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/s2;


# static fields
.field public static final a:Lr0/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly1/b0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly1/b0;-><init>(I)V

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    sput-object v0, Lf2/t2;->a:Lr0/e1;

    return-void
.end method
