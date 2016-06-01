class ReportRenderer
  def initialize(report)
    @report = report
  end

  def query_successful?
    query_result != false
  end

  def headers
    raise 'hell' unless query_successful?
    query_result.columns
  end

  def rows
    raise 'hell' unless query_successful?

    query_result.rows
  end

  private

  def query_result
    @query_result ||= begin
                        ActiveRecord::Base.connection.exec_query(report.query)
                      rescue ActiveRecord::ActiveRecordError => e
                        false
                      end
  end

  attr_reader :report
end
