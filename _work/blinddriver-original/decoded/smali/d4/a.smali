.class public final Ld4/a;
.super Ld4/b;
.source "SourceFile"


# static fields
.field public static final b:Ld4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld4/a;

    invoke-direct {v0}, Ld4/b;-><init>()V

    sput-object v0, Ld4/a;->b:Ld4/a;

    return-void
.end method
