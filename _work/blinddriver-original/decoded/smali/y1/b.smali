.class public final Ly1/b;
.super Lb2/b;
.source "SourceFile"


# static fields
.field public static final m:Ly1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ly1/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb2/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly1/b;->m:Ly1/b;

    return-void
.end method
