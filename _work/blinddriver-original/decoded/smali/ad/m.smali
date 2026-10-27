.class public abstract Lad/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr9/i;

    const-string v1, "(^|[\\s(,/])[\u041c\u041d\u0420\u0422E\u0415MHPT]-?\\d{1,2}"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lad/m;->a:Lr9/i;

    return-void
.end method
