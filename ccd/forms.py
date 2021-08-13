'''
Forms
'''

# Imports ---------------------------------------------------------------------

from flask_wtf import FlaskForm
from wtforms import TextField, TextAreaField, PasswordField, SubmitField,BooleanField, widgets
from wtforms.validators import DataRequired, ValidationError, InputRequired,Email,Length,EqualTo
from wtforms import validators
from models import *
from wtforms.fields import simple, core

# Setup -----------------------------------------------------------------------

USERNAME = 'admin'
PASSWORD = 'aafcCCD'

DATA_ARCHIVE_USERNAME = 'daadmin'
DATA_ARCHIVE_PASSWORD = 'daaafcCCD'

# Forms -----------------------------------------------------------------------

class BudgetAddForm(FlaskForm):
  year1 = TextField("Year 1")
  year2 = TextField("Year 2")
  category = TextField("Category")
  assigned_to = TextField("Assigned To")
  comments = TextAreaField("Comments")
  subcategory = TextField("Subcategory")
  cost_type = TextField("Cost Type")
  centre = TextField("Centre")
  orig_proposal = TextField("Original Proposal")
  submit = SubmitField("Save")


class CollabAddForm(FlaskForm):
  name1 = TextField("First Name")
  name2 = TextField("Last Name")
  title = TextField("Title")
  role_expertise = TextAreaField("Role Expertise")
  country = TextField("Country")
  type = TextField("Type")
  affiliation = TextField("Affiliation")
  email = TextField("Email")
  submit = SubmitField("Save")

class ROC_memberAddForm(FlaskForm):
  id = TextField("Id")
  name = TextField("Name")
  
  title = TextField("Title")
  affiliation = TextField("Affiliation")
  email = TextField("Email")
  web_link = TextField("Web Link")
  submit = SubmitField("Save")

class Research_TeamAddForm(FlaskForm):
  id = TextField("Id")
  name = TextField("Name")
  
  title = TextField("Title")
  role = TextField("Role")
  description_of_responsibilities = TextField("Description of Responsibilities")
  affiliation = TextField("Affiliation")
  email = TextField("Email")
  website = TextField("WebSite")
  submit = SubmitField("Save")

class ConferenceAddForm(FlaskForm):
  title = TextField("Title")
  date = TextField("Date")
  location = TextField("Location")
  attendees = TextField("Attendees")
  submit = SubmitField("Save")


class CostCategoryAddForm(FlaskForm):
  code = TextField("Code")
  description = TextField("Description")
  submit = SubmitField("Save")


class CostSubcategoryAddForm(FlaskForm):
  description = TextField("Description")
  submit = SubmitField("Save")


class LinkAddForm(FlaskForm):
  category = TextField("Category")
  subcategory = TextField("Subcategory")
  software = TextField("Software")
  description = TextField("Description")
  link = TextField("Link")
  submit = SubmitField("Save")

class DataArchiveLoginForm(FlaskForm):
  #change login title
    username = TextField("Data Archive Username", validators=[DataRequired()])

    password = PasswordField("Data Archive Password", validators=[DataRequired()])
    
    submit = SubmitField("Login")
    cancel = SubmitField("Cancel")
    #the name after validate_ should equal to field variable above!
    def validate_username(self, field):
        if field.data != DATA_ARCHIVE_USERNAME:
            raise ValidationError("Invalid username")

    def validate_password(self, field):
        if field.data != DATA_ARCHIVE_PASSWORD:
            raise ValidationError("Invalid password")


class LoginForm(FlaskForm):
  #change login title
    username = TextField("Username")

    password = PasswordField("Password")
    
    submit = SubmitField("Login")
    cancel = SubmitField("Cancel")
    def validate_username(self, field):
        if field.data != USERNAME:
            raise ValidationError("Invalid username")

    def validate_password(self, field):
        if field.data != PASSWORD:
            raise ValidationError("Invalid password")

class SignUpForm(FlaskForm):

  
  #change login title
    email = TextField("Email", validators=[InputRequired()])
    
    username = TextField("username", validators=[InputRequired(), Length(min=5, max=20, message='user name should have more than 4\
       characters')], id="username")
    
    password = simple.PasswordField("Password", validators=[InputRequired(), Length(min=5, max=20, message='password should have more than 4 \
      characters'), EqualTo('ReEnterPassword', message="Passwords don't match")], id="password", widget = widgets.PasswordInput(), render_kw= {'class': 'form-control'})
    
    ReEnterPassword = simple.PasswordField("Re-enter Password", validators=[validators.DataRequired(message='please enter password'),\
    validators.EqualTo('password', message='please enter the same password')], widget = widgets.PasswordInput(), render_kw= {'class': 'form-control'})
    
    
    submit = SubmitField("Summit")

    def validate_email(self, field):
        if UserAccount.query.filter_by(email=field.data).first():
            raise ValidationError('email is already exist')


    def validate_username(self, field):
        if UserAccount.query.filter_by(username=field.data).first():
            raise ValidationError('username is already exist')

    def validate_reenter_password(self, password, ReEnterPassword):
        if password.data != ReEnterPassword.data:
            raise ValidationError("the passwords you entered must be the same")

    

class MilestoneAddForm(FlaskForm):
  milestone_id = TextField("Milestone ID")
  short_title = TextField("Short Title")
  start_date = TextField("Start Date")
  end_date = TextField("End Date")
  module = TextField("Module")
  activity = TextAreaField("Activity")
  milestone = TextAreaField("Milestone")
  assigned_to = TextField("Assigned To")
  progress = TextAreaField("Progress")
  variance = TextAreaField("Variance")
  submit = SubmitField("Save")


class NewsAddForm(FlaskForm):
  entry = TextAreaField("News Entry")
  submit = SubmitField("Save")


class ObjectiveAddForm(FlaskForm):
  order = TextField("Order")
  short = TextField("Short")
  description = TextAreaField("Description")
  outcome = TextAreaField("Outcome")
  submit = SubmitField("Save")

class ParticipantAddForm(FlaskForm):
  site = TextField("Site")
  name_id = TextField("Name ID (Last,First)")
  name1 = TextField("First Name")
  name2 = TextField("Last Name")
  cost_centre = TextField("Cost Centre")
  from_participant = TextField("From Participant")
  pi = TextField("PI")
  role = TextField("Role")
  responsibility = TextAreaField("Responsibility")
  initials = TextField("Initials")
  publishing_initials = TextField("Publishing Initials")
  email = TextField("Email")
  contribution_percent = TextField("Contribution Percent")
  submit = SubmitField("Save")


class PublicationAddForm(FlaskForm):
  year = TextField("Year")
  title = TextAreaField("Title")
  citation = TextAreaField("Citation")
  link = TextField("Link (http://...)")
  submit = SubmitField("Save")


class RdcAddForm(FlaskForm):
  centre = TextField("Centre")
  director = TextField("Director")
  adrdt = TextField("ADRDT")
  submit = SubmitField("Save")



class SupportAddForm(FlaskForm):
  name_id = TextField("Name ID (Last,First)")
  name1 = TextField("First Name")
  name2 = TextField("Last Name")
  site = TextField("Site")
  team = TextField("Team")
  role = TextField("Role")
  responsibility = TextField("Responsibility")
  contribution_percent = TextField("Contribution Percent")
  email = TextField("Email")
  submit = SubmitField("Save")


class ToolAddForm(FlaskForm):
  title = TextField("Title")
  category = TextField("Category")
  description = TextAreaField("Description")
  link = TextField("Link (http://...)")
  submit = SubmitField("Save")

