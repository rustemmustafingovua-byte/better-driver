.class public abstract Lx2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx2/a;

    invoke-direct {v0}, Landroid/text/style/CharacterStyle;-><init>()V

    sput-object v0, Lx2/b;->a:Lx2/a;

    return-void
.end method
